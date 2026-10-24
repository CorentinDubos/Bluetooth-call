.class public Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;
.super Landroid/app/Dialog;
.source "N49_Dialog.java"


# instance fields
.field mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 23
    sget v0, Lcom/hzbhd/midware/proxy/R$style;->MyDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string v0, "N49-LOG"

    const-string v1, "N49_Dialog--in"

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/hzbhd/midware/proxy/R$dimen;->dp612:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 28
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 117
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->src_list_tv:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->src_list_video:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->src_list_music:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->src_list_disc:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->src_list_auxin:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->src_list_link:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->src_list_dvr:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->src_list_bt_music:I

    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isAtvExist(I)Ljava/lang/Boolean;
    .locals 2

    .line 64
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 65
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->ATV:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x1

    .line 67
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 69
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private isDiscExist(I)Ljava/lang/Boolean;
    .locals 3

    .line 53
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 54
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->DISC:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x1

    .line 56
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "isDiscExist"

    const-string v2, ""

    .line 58
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private isDtvExist(I)Ljava/lang/Boolean;
    .locals 2

    .line 43
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 44
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->DTV:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x1

    .line 46
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private isDvrxist(I)Ljava/lang/Boolean;
    .locals 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 85
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object v0

    sget-object v1, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->DVR:Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/setting/BHDAndroidConfigXML$SHARED_KEY;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getSharedBool(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x1

    .line 87
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 89
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private srcItemInit()V
    .locals 1

    .line 97
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->src_list_tv:I

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->isDtvExist(I)Ljava/lang/Boolean;

    .line 98
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->src_list_disc:I

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->isDiscExist(I)Ljava/lang/Boolean;

    .line 100
    sget v0, Lcom/hzbhd/midware/proxy/R$id;->src_list_dvr:I

    invoke-direct {p0, v0}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->isDvrxist(I)Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->hide()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 104
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 105
    sget p1, Lcom/hzbhd/midware/proxy/R$layout;->src_list_alert_view:I

    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->setContentView(I)V

    .line 107
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->srcItemInit()V

    .line 108
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->initEvent()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnclickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/CommonUI/N49_Dialog;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
