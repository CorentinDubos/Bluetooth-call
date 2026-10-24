.class public Lcom/hzbhd/config/jar/dualscreen/DualScreenWindow;
.super Ljava/lang/Object;
.source "DualScreenWindow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DualScreenWindow"


# instance fields
.field private isAdd:Z

.field mBaseRootActivityView:Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenWindow;->mBaseRootActivityView:Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    .line 16
    iput-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenWindow;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getWindowParam()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    const-string v0, "DualScreenWindow"

    const-string v1, "initWindowParam: "

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x7d2

    .line 50
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const v1, 0x1000428

    .line 51
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x0

    .line 53
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 54
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, -0x1

    .line 56
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 57
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const-string v1, "Navigation"

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 32
    iget-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenWindow;->isAdd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenWindow;->isAdd:Z

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenWindow;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenWindow;->mBaseRootActivityView:Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public isAdd()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenWindow;->isAdd:Z

    return v0
.end method

.method public show()V
    .locals 3

    .line 20
    iget-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenWindow;->isAdd:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenWindow;->isAdd:Z

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenWindow;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenWindow;->mBaseRootActivityView:Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    invoke-direct {p0}, Lcom/hzbhd/config/jar/dualscreen/DualScreenWindow;->getWindowParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
