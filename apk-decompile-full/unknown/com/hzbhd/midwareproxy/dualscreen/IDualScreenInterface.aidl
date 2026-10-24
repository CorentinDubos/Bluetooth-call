package com.hzbhd.midwareproxy.dualscreen;

interface IDualScreenInterface {
    boolean checkIsNaviActivity(String packageName);
    int getNaviDisplayId();

    void showInMain();
    void showInBack();
    void hideInMain();
    void hideInBack();
    void showOrHideInMain();
    void showOrHideInBack();

    void hideAll();

    void setIsNeedShowBack(boolean isShow);
}