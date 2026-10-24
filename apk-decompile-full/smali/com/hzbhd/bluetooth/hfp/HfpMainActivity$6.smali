.class Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$6;
.super Ljava/lang/Object;
.source "HfpMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->initUI_H1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V
    .locals 0

    .line 1424
    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$6;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1427
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$6;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1428
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$6;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$6;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    const/16 v0, 0x1f41

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->SendMsg(I)V

    .line 1429
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$6;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$6;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    sget-boolean p1, Lcom/hzbhd/bluetooth/call/CallFragment;->CALL_MUTE_FLGS:Z

    xor-int/lit8 p1, p1, 0x1

    sput-boolean p1, Lcom/hzbhd/bluetooth/call/CallFragment;->CALL_MUTE_FLGS:Z

    .line 1430
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$6;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    const v0, 0x7f090148

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$6;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    sget-boolean v0, Lcom/hzbhd/bluetooth/call/CallFragment;->CALL_MUTE_FLGS:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method
