.class Lcom/hzbhd/bluetooth/call/CallFragment$1;
.super Ljava/lang/Object;
.source "CallFragment.java"

# interfaces
.implements Lcom/hzbhd/bluetooth/widget/_t1/AudioInPhoneAnim$IAudioInPhoneAnimCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/call/CallFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/call/CallFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/call/CallFragment;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$1;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetImgButtonRes(I)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment$1;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$000(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    return-void
.end method
