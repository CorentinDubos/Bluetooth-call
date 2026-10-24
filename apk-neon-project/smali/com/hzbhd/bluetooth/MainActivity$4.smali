.class Lcom/hzbhd/bluetooth/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/MainActivity;->initPinCodeWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/MainActivity;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/MainActivity;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$4;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$4;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/MainActivity;->access$100(Lcom/hzbhd/bluetooth/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$4;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/MainActivity;->access$100(Lcom/hzbhd/bluetooth/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$4;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/MainActivity;->access$100(Lcom/hzbhd/bluetooth/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
