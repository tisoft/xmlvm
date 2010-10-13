package android.internal;

import java.util.ArrayList;
import java.util.List;

import android.content.res.Configuration;

/**
 * 
 * Implementation of Android's algorithm used to determine the folders to search
 * for resources. The folders to search depend on the configuration of the
 * device.
 * 
 */

public class ResourceFolderSelector {

    /**
     * 
     * Determine the resource folders which have to be accessed to obtain
     * resources. Folders holding alternative resources are matched against the
     * device configuration to determine the folders to consider. The algorithm
     * used to determine the folders is specified in the Android SDK's
     * documentation.
     * 
     * @param folders
     *            The folders to match against the device configuration. The
     *            list must only contain folders holding resources of one
     *            resource type.
     * 
     * @param configuration
     *            The device configuration to be matched against the folder
     *            names.
     * 
     * @param density
     *            The density of the display.
     * 
     * @return A list holding all folders to be considered. The order of the
     *         returned list is significant. The folders have to be searched for
     *         a particular resource in the order as they are returned.
     * 
     */

    public List<String> getResourceFolders(List<String> folders, Configuration configuration,
            int density) {
        List<String> result = new ArrayList<String>();
        List<Folder> parsedFolders = new ArrayList<Folder>();

        for (String folder : folders) {
            parsedFolders.add(new Folder(folder));
        }

        // Call internal version of getResourceFolders recursively
        getResourceFolders(result, parsedFolders, configuration, density);

        return result;
    }

    /**
     * 
     * Determine the resource folders which have to be accessed to obtain
     * resources. Folders holding alternative resources are matched against the
     * device configuration to determine the folders to consider. The algorithm
     * used to determine the folders is specified in the Android SDK's
     * documentation. This method is gets called internally by
     * {@link #getResourceFolders(List, DeviceProperties)}.
     * 
     * @param result
     *            The list of folders found. The order of the list is
     *            significant. The folders have to be searched for a particular
     *            resource in the order as they are stored.
     * 
     * @param folders
     *            The folders to match against the device specification. The
     *            list must only contain folders holding resources of one
     *            resource type. Folders a now represented by Folder objects
     *            holding the parsed resource modifiers.
     * 
     * @param configuration
     *            The device configuration to be matched against the folder
     *            names.
     * 
     * @param density
     *            The density of the display.
     * 
     * @return A list holding all folders to be considered. The order of the
     *         returned list is significant. The folders have to be searched for
     *         a particular resource in the order as they are returned.
     * 
     */

    private void getResourceFolders(List<String> result, List<Folder> folders,
            Configuration configuration, int density) {

        // Step 1: Remove folders contradicting the device specification
        removeContradictions(folders, configuration);

        // Step 2 to 5: Test for the presence of qualifiers and remove all
        // folders which do not include the qualifier detected in other folders
        // Testing is done in the orders as defined by the Android
        // specifiaction.
        // TODO: Currently not all properties are supported.

        // Test the locale - first including region. If that does not match test
        // without region.
        List<Folder> resultFolders = new ArrayList<Folder>(folders);
        int match = testConfigurationPresent(Folder.LOCALE_MATCHER, resultFolders, configuration);
        if (match > Folder.Matcher.NO_MATCH) {
            removeFoldersByConfiguration(Folder.LOCALE_MATCHER, resultFolders, configuration,
                    match == Folder.Matcher.FULL_MATCH);
        }

        // Test screen size
        if (testConfigurationPresent(Folder.SCREENSIZE_MATCHER, resultFolders, configuration) == Folder.Matcher.FULL_MATCH) {
            removeFoldersByConfiguration(Folder.SCREENSIZE_MATCHER, resultFolders, configuration,
                    true);
        }

        // Test screen aspect
        if (testConfigurationPresent(Folder.SCREENASPECT_MATCHER, resultFolders, configuration) == Folder.Matcher.FULL_MATCH) {
            removeFoldersByConfiguration(Folder.SCREENASPECT_MATCHER, resultFolders, configuration,
                    true);
        }

        // Test screen orientation
        if (testConfigurationPresent(Folder.ORIENTATION_MATCHER, resultFolders, configuration) == Folder.Matcher.FULL_MATCH) {
            removeFoldersByConfiguration(Folder.ORIENTATION_MATCHER, resultFolders, configuration,
                    true);
        }

        // Test screen density. If no matching qualifier is present use best
        // match. Best match is the next density higher than the devices
        // density.
        // If also no higher density is found try lower densities. Last guess is
        // nodpi
        int matchedDensity = getBestDensity(resultFolders, density);
        if (matchedDensity != -1) {
            removeFoldersByDensity(resultFolders, matchedDensity);
        } else {
            removeFoldersByDensity(resultFolders, Density.DENSITY_NONE);
        }

        // Now resultFolders should hold at most one entry
        if (resultFolders.size() > 0) {
            result.add(resultFolders.get(0).getName());

            // Recursively determine folders with the found folder removed
            folders.remove(resultFolders.get(0));
            if (folders.size() > 0) {
                getResourceFolders(result, folders, configuration, density);
            }
        }
    }

    /**
     * 
     * Removes all folders from the provided list of folders which contradict
     * the current device configuration. The folder's parsed resource modifiers
     * are compared with the device configuration values. As soon as a folder
     * holds a contradicting modifier it will be deleted from the list of
     * folders. Density modifiers never lead to contradictions.
     * 
     * @param folders
     *            The folders to be checked.
     * 
     * @param configuration
     *            The device configuration to be matched against the folder
     *            names.
     * 
     */

    private void removeContradictions(List<Folder> folders, Configuration configuration) {
        List<Folder> contradictions = new ArrayList<Folder>();

        // Collect contradictions
        for (Folder folder : folders) {
            if (folder.contradicts(configuration)) {
                contradictions.add(folder);
            }
        }

        // Remove contradictions from input list
        folders.removeAll(contradictions);
    }

    /**
     * 
     * Tests whether one of the folders has a particular value specified which
     * matches the given configuration.
     * 
     * @param matcher
     *            The Matcher implementation used to test for the value.
     * 
     * @param folders
     *            The folders to be tested for a matching orientation.
     * 
     * @param configuration
     *            The configuration providing the orientation to look for.
     * 
     * @return NO_MATCH, PARTIAL_MATCH or FULL_MATCH depending on the matching
     *         result.
     * 
     */

    private int testConfigurationPresent(Folder.Matcher matcher, List<Folder> folders,
            Configuration configuration) {
        int match = Folder.Matcher.NO_MATCH;
        for (Folder folder : folders) {
            int i = matcher.matches(folder, configuration);

            // Return in case of full match
            if (i == Folder.Matcher.FULL_MATCH) {
                return i;
            }

            // Record partial match
            if (i > match) {
                match = i;
            }
        }

        return match;
    }

    /**
     * 
     * Removes folders from the provided list of folders based on a provided
     * configuration. All folders which do not match the configuration using the
     * provided matcher will be removed.
     * 
     * @param matcher
     *            The matcher used to match the folder against the configuration
     * 
     * @param folders
     *            The list of folders to remove not matching folders from.
     * 
     * @param configuration
     *            The configuration providing the orientation to match against.
     * 
     * @param fullMatchRequired
     *            Controls whether a full match is required. In this case
     *            partial matching folders will be removed as well.
     * 
     */

    private void removeFoldersByConfiguration(Folder.Matcher matcher, List<Folder> folders,
            Configuration configuration, boolean fullMatchRequired) {
        List<Folder> unmatched = new ArrayList<Folder>();

        // Collect unmatching folders
        for (Folder folder : folders) {
            int match = matcher.matches(folder, configuration);
            if (match == Folder.Matcher.NO_MATCH
                    || (fullMatchRequired && match != Folder.Matcher.FULL_MATCH)) {
                unmatched.add(folder);
            }
        }

        // Remove folders
        folders.removeAll(unmatched);
    }

    /**
     * 
     * Determines the density matching best the device's configuration.
     * 
     * @param folders
     *            The folders to check for its density modifier.
     * 
     * @param density
     *            The device's density to match the folders against.
     * 
     * @return The density matching best encoded as an integer value. If no
     *         density is found, -1 will be returned.
     * 
     */

    private int getBestDensity(List<Folder> folders, int density) {
        int[][] densityOrder = {
                { Density.DENSITY_LOW, Density.DENSITY_UNDEFINED, Density.DENSITY_MEDIUM,
                        Density.DENSITY_HIGH },
                { Density.DENSITY_MEDIUM, Density.DENSITY_UNDEFINED, Density.DENSITY_HIGH,
                        Density.DENSITY_LOW },
                { Density.DENSITY_HIGH, Density.DENSITY_UNDEFINED, Density.DENSITY_MEDIUM,
                        Density.DENSITY_LOW } };

        // Collect available densities
        int densities = 0;
        for (Folder folder : folders) {
            densities |= (1 << folder.getDensity());
        }
        
        // Test densities in the order which best matches the device
        // configuration
        int[] deviceDensityOrder = densityOrder[density - 1];
        for (int i = 0; i < deviceDensityOrder.length; i++) {
            if ((densities & (1 << deviceDensityOrder[i])) > 0) {
                return deviceDensityOrder[i];
            }
        }

        // Default: Return DENSITY_UNSPECIFIED, this should never be reached
        // unless there are no folders to be tested.
        return -1;
    }

    /**
     * 
     * Removes all folders from the provided list of folders which do not
     * specify the given density.
     * 
     * @param folders
     *            The folders to be tested.
     * 
     * @param density
     *            The density to test for.
     * 
     */

    private void removeFoldersByDensity(List<Folder> folders, int density) {
        List<Folder> unmatched = new ArrayList<Folder>();

        // Collect unmatching folders
        for (Folder folder : folders) {
            if (folder.getDensity() != density) {
                unmatched.add(folder);
            }
        }

        // Remove unmatching folders
        folders.removeAll(unmatched);
    }
}
