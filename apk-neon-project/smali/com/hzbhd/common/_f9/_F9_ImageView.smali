.class public Lcom/hzbhd/common/_f9/_F9_ImageView;
.super Landroid/widget/ImageView;
.source "_F9_ImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/common/_f9/_F9_ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/common/_f9/_F9_ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput-object p1, p0, Lcom/hzbhd/common/_f9/_F9_ImageView;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p0, p0}, Lcom/hzbhd/common/_f9/_F9_ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private realKeyClick(I)V
    .locals 2

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "hzbhd_can_keypress"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "value"

    .line 60
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    iget-object p1, p0, Lcom/hzbhd/common/_f9/_F9_ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private startActivity(Landroid/content/ComponentName;)V
    .locals 1

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 66
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 67
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/hzbhd/common/_f9/_F9_ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    iget-object p1, p0, Lcom/hzbhd/common/_f9/_F9_ImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/hzbhd/common/ui/R$string;->app_not_installed:I

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/ToastUtls;->showLongText(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 37
    sget v0, Lcom/hzbhd/common/ui/R$id;->__f9__all_app:I

    if-ne p1, v0, :cond_0

    .line 39
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 40
    sget-object v0, Lcom/hzbhd/midware/constant/HzbhdComponentName;->NewLauncher:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "keycode"

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0}, Lcom/hzbhd/common/_f9/_F9_ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 47
    :cond_0
    sget v0, Lcom/hzbhd/common/ui/R$id;->__f9__setting:I

    if-ne p1, v0, :cond_1

    .line 48
    sget-object p1, Lcom/hzbhd/midware/constant/HzbhdComponentName;->ANDROID_SETTINGS:Landroid/content/ComponentName;

    invoke-direct {p0, p1}, Lcom/hzbhd/common/_f9/_F9_ImageView;->startActivity(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 49
    :cond_1
    sget v0, Lcom/hzbhd/common/ui/R$id;->__f9__switch:I

    if-ne p1, v0, :cond_2

    const/16 p1, 0x98

    .line 50
    invoke-direct {p0, p1}, Lcom/hzbhd/common/_f9/_F9_ImageView;->realKeyClick(I)V

    goto :goto_0

    .line 51
    :cond_2
    sget v0, Lcom/hzbhd/common/ui/R$id;->__f9__vol_up:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x7

    .line 52
    invoke-direct {p0, p1}, Lcom/hzbhd/common/_f9/_F9_ImageView;->realKeyClick(I)V

    goto :goto_0

    .line 53
    :cond_3
    sget v0, Lcom/hzbhd/common/ui/R$id;->__f9__vol_down:I

    if-ne p1, v0, :cond_4

    const/16 p1, 0x8

    .line 54
    invoke-direct {p0, p1}, Lcom/hzbhd/common/_f9/_F9_ImageView;->realKeyClick(I)V

    :cond_4
    :goto_0
    return-void
.end method
