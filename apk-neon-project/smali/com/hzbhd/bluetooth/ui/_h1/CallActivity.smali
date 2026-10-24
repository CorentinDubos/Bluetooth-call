.class public Lcom/hzbhd/bluetooth/ui/_h1/CallActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CallActivity.java"


# static fields
.field public static Intance:Lcom/hzbhd/bluetooth/ui/_h1/CallActivity;


# instance fields
.field mCallFragment:Lcom/hzbhd/bluetooth/call/CallFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0223

    .line 26
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_h1/CallActivity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ui/_h1/CallActivity;->showCallFragment()V

    return-void
.end method

.method public showCallFragment()V
    .locals 4

    .line 31
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ui/_h1/CallActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ui/_h1/CallActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "call_fragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    const v3, 0x7f09025e

    if-nez v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/_h1/CallActivity;->mCallFragment:Lcom/hzbhd/bluetooth/call/CallFragment;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 37
    invoke-static {v1}, Lcom/hzbhd/bluetooth/call/CallFragment;->newInstance(Landroid/os/Bundle;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object v1

    .line 40
    :cond_0
    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 49
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
