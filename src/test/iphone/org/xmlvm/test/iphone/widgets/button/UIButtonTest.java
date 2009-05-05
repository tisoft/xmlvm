package org.xmlvm.test.iphone.widgets.button;

import java.awt.Color;
import java.awt.Font;

import org.xmlvm.iphone.*;

public class UIButtonTest extends UIApplication {

    public void applicationDidFinishLaunching(UIApplication app) {
        UIScreen screen = UIScreen.mainScreen();
        CGRect rect = screen.applicationFrame();
        UIWindow window = new UIWindow(rect);

        rect.origin.x = rect.origin.y = 0;
        UIView mainView = new UIView(rect);
        window.addSubview(mainView);

        UILabel title = new UILabel(rect);
        title.setText("-- No button pressed --");
        title.setTextAlignment(UITextAlignment.UITextAlignmentCenter);
        mainView.addSubview(title);

        UIButton customButton = new UIButton(UIButtonType.UIButtonTypeCustom, new CGRect(10, 10,
                90, 60));
        customButton.setFont(new Font("Arial", Font.BOLD | Font.ITALIC, 12));
        customButton.setTitleForState("Custom", UIControlState.UIControlStateNormal);
        customButton.setTitleShadowColorForState(Color.DARK_GRAY, UIControlState.UIControlStateNormal);
        customButton.setTitleShadowOffsetForState(new CGSize(2, 2), UIControlState.UIControlStateNormal);
        mainView.addSubview(customButton);
        mainView.bringSubviewToFront(customButton);

        UIButton roundedRectButton = new UIButton(UIButtonType.UIButtonTypeCustom, new CGRect(115,
                10, 90, 60));
        roundedRectButton.setFont(new Font("Arial", Font.BOLD, 14));
        roundedRectButton.setTitleForState("Rounded", UIControlState.UIControlStateNormal);
        mainView.addSubview(roundedRectButton);
        mainView.bringSubviewToFront(roundedRectButton);

        UIButton detailDisclosureButton = new UIButton(UIButtonType.UIButtonTypeCustom, new CGRect(
                220, 10, 90, 60));
        detailDisclosureButton.setFont(new Font("Times New Roman", Font.BOLD, 16));
        detailDisclosureButton.setTitleForState("Detail", UIControlState.UIControlStateNormal);
        mainView.addSubview(detailDisclosureButton);
        mainView.bringSubviewToFront(detailDisclosureButton);

        UIButton infoLightButton = new UIButton(UIButtonType.UIButtonTypeCustom, new CGRect(10,
                390, 90, 60));
        infoLightButton.setTitleForState("Light", UIControlState.UIControlStateNormal);
        mainView.addSubview(infoLightButton);
        mainView.bringSubviewToFront(infoLightButton);

        UIButton infoDarkButton = new UIButton(UIButtonType.UIButtonTypeCustom, new CGRect(115,
                390, 90, 60));
        infoDarkButton.setTitleForState("Dark", UIControlState.UIControlStateNormal);
        mainView.addSubview(infoDarkButton);
        mainView.bringSubviewToFront(infoDarkButton);

        UIButton contactAddButton = new UIButton(UIButtonType.UIButtonTypeCustom, new CGRect(220,
                390, 90, 60));
        contactAddButton.setTitleForState("Contact", UIControlState.UIControlStateNormal);
        mainView.addSubview(contactAddButton);
        mainView.bringSubviewToFront(contactAddButton);

        window.makeKeyAndVisible();
    }

    public static void main(String[] args) {
        UIApplication.main(args, UIButtonTest.class);
    }

}
