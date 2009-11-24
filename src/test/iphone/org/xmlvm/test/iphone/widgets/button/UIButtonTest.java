package org.xmlvm.test.iphone.widgets.button;


import org.xmlvm.iphone.*;

public class UIButtonTest extends UIApplication {

    public void applicationDidFinishLaunching(UIApplication app) {
        UIScreen screen = UIScreen.mainScreen();
        CGRect rect = screen.getApplicationFrame();
        UIWindow window = new UIWindow(rect);

        rect.origin.x = rect.origin.y = 0;
        UIView mainView = new UIView(rect);
        window.addSubview(mainView);

        final UILabel title = new UILabel(rect);
        title.setBackgroundColor(UIColor.whiteColor);
        title.setText("-- No button pressed --");
        title.setTextAlignment(UITextAlignment.Center);
        mainView.addSubview(title);

        UIButton roundedRectButton = UIButton.buttonWithType(UIButtonType.RoundedRect);
        roundedRectButton.setFrame(new CGRect(10, 10, 90, 60));
        // roundedRectButton.setFont(new Font("Arial", Font.BOLD, 14));
        roundedRectButton.setTitle("Rounded", UIControlState.Normal);
        roundedRectButton.addTarget(new UIControlDelegate() {

            @Override
            public void raiseEvent(UIControlDelegate sender, int eventType) {
                title.setText("roundedRectButton pressed");
            }

        }, UIControlEvent.TouchUpInside);
        mainView.addSubview(roundedRectButton);

        UIButton alertDialogLightButton = UIButton
                .buttonWithType(UIButtonType.RoundedRect);
        alertDialogLightButton.setFrame(new CGRect(115, 10, 90, 60));
        alertDialogLightButton.setBackgroundColor(UIColor.colorWithRGBA(122, 126, 150, 191));
        alertDialogLightButton.setTitleColor(UIColor.whiteColor, UIControlState.Normal);
        alertDialogLightButton.setTitleShadowOffset(new CGSize(0, -1),
                UIControlState.Normal);
        //TODO: alertDialogLightButton.setEdgeDiameter(8);
        // detailDisclosureButton.setFont(new Font("Times New Roman", Font.BOLD,
        // 16));
        alertDialogLightButton.setTitle("alertLight", UIControlState.Normal);
        alertDialogLightButton.addTarget(new UIControlDelegate() {

            @Override
            public void raiseEvent(UIControlDelegate sender, int eventType) {
                title.setText("alertDialogLightButton pressed");
            }

        }, UIControlEvent.TouchUpInside);
        mainView.addSubview(alertDialogLightButton);

        UIButton alertDialogDarkButton = UIButton
                .buttonWithType(UIButtonType.RoundedRect);
        alertDialogDarkButton.setFrame(new CGRect(220, 10, 90, 60));
        alertDialogDarkButton.setBackgroundColor(UIColor.colorWithRGBA(76, 82, 113, 191));
        alertDialogDarkButton.setTitleColor(UIColor.whiteColor, UIControlState.Normal);
        alertDialogDarkButton.setTitleShadowOffset(new CGSize(0, -1),
                UIControlState.Normal);
        //TODO: alertDialogDarkButton.setEdgeDiameter(8);
        alertDialogDarkButton.setTitle("alertDark", UIControlState.Normal);
        alertDialogDarkButton.addTarget(new UIControlDelegate() {

            @Override
            public void raiseEvent(UIControlDelegate sender, int eventType) {
                title.setText("alertDialogDarkButton pressed");
            }

        }, UIControlEvent.TouchUpInside);
        mainView.addSubview(alertDialogDarkButton);

        /*
         * UIButton detailDisclosureButton =
         * UIButton.buttonWithType(UIButtonType.UIButtonTypeDetailDisclosure);
         * detailDisclosureButton.setFrame(new CGRect(115, 10, 90, 60)); //
         * detailDisclosureButton.setFont(new Font("Times New Roman", Font.BOLD,
         * 16)); detailDisclosureButton.setTitle("Detail",
         * UIControlState.UIControlStateNormal);
         * mainView.addSubview(detailDisclosureButton);
         * 
         * UIButton contactAddButton =
         * UIButton.buttonWithType(UIButtonType.UIButtonTypeContactAdd);
         * contactAddButton.setFrame(new CGRect(220, 10, 90, 60));
         * contactAddButton.setTitle("Contact",
         * UIControlState.UIControlStateNormal);
         * mainView.addSubview(contactAddButton);
         */

        UIButton darkGrayButton = UIButton.buttonWithType(UIButtonType.RoundedRect);
        darkGrayButton.setFrame(new CGRect(10, 390, 90, 60));
        darkGrayButton.setBackgroundColor(UIColor.colorWithRGBA(10, 10, 10, 191));
        //TODO: darkGrayButton.setPressedBackgroundColor(UIColor.blueColor);
        //TODO: darkGrayButton.setPressedTitleColor(Color.WHITE);
        darkGrayButton.setTitleColor(UIColor.blackColor, UIControlState.Normal);
        darkGrayButton.setTitleShadowOffset(new CGSize(0, -1), UIControlState.Normal);
        //TODO: darkGrayButton.setEdgeDiameter(8);
        darkGrayButton.setTitle("darkGray", UIControlState.Normal);
        darkGrayButton.addTarget(new UIControlDelegate() {

            @Override
            public void raiseEvent(UIControlDelegate sender, int eventType) {
                title.setText("darkGrayButton pressed");
            }

        }, UIControlEvent.TouchUpInside);
        mainView.addSubview(darkGrayButton);

        /*
         * UIButton infoLightButton =
         * UIButton.buttonWithType(UIButtonType.UIButtonTypeInfoLight);
         * infoLightButton.setFrame(new CGRect(10, 390, 90, 60));
         * infoLightButton.setTitle("Light",
         * UIControlState.UIControlStateNormal);
         * mainView.addSubview(infoLightButton);
         * 
         * UIButton infoDarkButton =
         * UIButton.buttonWithType(UIButtonType.UIButtonTypeInfoDark);
         * infoDarkButton.setFrame(new CGRect(220, 390, 90, 60));
         * infoDarkButton.setTitle("Dark", UIControlState.UIControlStateNormal);
         * mainView.addSubview(infoDarkButton);
         */
        /*
         * UIButton customButton = new UIButton(UIButtonType.UIButtonTypeCustom,
         * new CGRect(10, 10, 90, 60)); customButton.setFont(new Font("Arial",
         * Font.BOLD | Font.ITALIC, 12)); customButton.setTitle("Custom",
         * UIControlState.UIControlStateNormal);
         * customButton.setTitleShadowColor(Color.DARK_GRAY,
         * UIControlState.UIControlStateNormal);
         * customButton.setTitleShadowOffset(new CGSize(2, 2),
         * UIControlState.UIControlStateNormal);
         * mainView.addSubview(customButton);
         * mainView.bringSubviewToFront(customButton);
         */
        window.makeKeyAndVisible();
    }

    public static void main(String[] args) {
        UIApplication.main(args, UIButtonTest.class);
    }
}
