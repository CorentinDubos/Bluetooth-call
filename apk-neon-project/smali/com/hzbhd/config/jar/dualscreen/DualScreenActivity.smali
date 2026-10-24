.class public Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;
.super Landroid/app/Activity;
.source "DualScreenActivity.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "DualScreenActivity"


# instance fields
.field mBaseRootActivityView:Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseRootActivityView()Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;->mBaseRootActivityView:Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    invoke-virtual {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;->mBaseRootActivityView:Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;->mBaseRootActivityView:Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-virtual {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;->getBaseRootActivityView()Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 21
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 22
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "DualScreenActivity"

    const-string v1, "onStart"

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->getInstance()Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->setDualScreenActivity(Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "DualScreenActivity"

    const-string v1, "onStop"

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->getInstance()Lcom/hzbhd/config/jar/dualscreen/DualScreenService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenService;->setDualScreenActivity(Lcom/hzbhd/config/jar/dualscreen/DualScreenActivity;)V

    return-void
.end method
