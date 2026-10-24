.class Lcom/autochips/inputsource/HDMI$1;
.super Landroid/content/BroadcastReceiver;
.source "HDMI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/inputsource/HDMI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/inputsource/HDMI;


# direct methods
.method constructor <init>(Lcom/autochips/inputsource/HDMI;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lcom/autochips/inputsource/HDMI$1;->this$0:Lcom/autochips/inputsource/HDMI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 676
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HDMI.JAVA"

    if-nez p1, :cond_0

    const-string p1, "mBtHidListener - action is null"

    .line 678
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "autochips.intent.action.CONNECT_STATE"

    .line 681
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 682
    iget-object p1, p0, Lcom/autochips/inputsource/HDMI$1;->this$0:Lcom/autochips/inputsource/HDMI;

    const-string v1, "HidConnectState"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/autochips/inputsource/HDMI;->access$002(Lcom/autochips/inputsource/HDMI;Z)Z

    .line 683
    iget-object p1, p0, Lcom/autochips/inputsource/HDMI$1;->this$0:Lcom/autochips/inputsource/HDMI;

    invoke-static {p1, v2}, Lcom/autochips/inputsource/HDMI;->access$102(Lcom/autochips/inputsource/HDMI;I)I

    .line 684
    iget-object p1, p0, Lcom/autochips/inputsource/HDMI$1;->this$0:Lcom/autochips/inputsource/HDMI;

    invoke-static {p1, v2}, Lcom/autochips/inputsource/HDMI;->access$202(Lcom/autochips/inputsource/HDMI;I)I

    .line 685
    iget-object p1, p0, Lcom/autochips/inputsource/HDMI$1;->this$0:Lcom/autochips/inputsource/HDMI;

    invoke-static {p1, v2}, Lcom/autochips/inputsource/HDMI;->access$302(Lcom/autochips/inputsource/HDMI;Z)Z

    .line 686
    iget-object p1, p0, Lcom/autochips/inputsource/HDMI$1;->this$0:Lcom/autochips/inputsource/HDMI;

    invoke-static {p1}, Lcom/autochips/inputsource/HDMI;->access$000(Lcom/autochips/inputsource/HDMI;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 687
    iget-object p1, p0, Lcom/autochips/inputsource/HDMI$1;->this$0:Lcom/autochips/inputsource/HDMI;

    invoke-static {p1}, Lcom/autochips/inputsource/HDMI;->access$400(Lcom/autochips/inputsource/HDMI;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "bt hid is connnet, query resolution "

    .line 688
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mBtHidListener - ACTION_MHLHID_CONNECT_STATE mIsBTHIDConnected is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/autochips/inputsource/HDMI$1;->this$0:Lcom/autochips/inputsource/HDMI;

    invoke-static {p2}, Lcom/autochips/inputsource/HDMI;->access$000(Lcom/autochips/inputsource/HDMI;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "autochips.intent.action.RESOLUTION"

    .line 694
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "PhoneResolution"

    .line 695
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 696
    iget-object p2, p0, Lcom/autochips/inputsource/HDMI$1;->this$0:Lcom/autochips/inputsource/HDMI;

    iget p2, p2, Lcom/autochips/inputsource/HDMI;->mPhoneResolutionIndex:I

    const-string v1, "mBtHidListener  ACTION_MHLHID_RESOLUTION mPhoneResolutionIndex is "

    if-eqz p2, :cond_3

    .line 697
    iget-object p2, p0, Lcom/autochips/inputsource/HDMI$1;->this$0:Lcom/autochips/inputsource/HDMI;

    iput p1, p2, Lcom/autochips/inputsource/HDMI;->mPhoneResolutionIndex:I

    .line 698
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/autochips/inputsource/HDMI$1;->this$0:Lcom/autochips/inputsource/HDMI;

    iget p2, p2, Lcom/autochips/inputsource/HDMI;->mPhoneResolutionIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object p1, p0, Lcom/autochips/inputsource/HDMI$1;->this$0:Lcom/autochips/inputsource/HDMI;

    iget p2, p1, Lcom/autochips/inputsource/HDMI;->mPhoneResolutionIndex:I

    invoke-static {p1, p2}, Lcom/autochips/inputsource/HDMI;->access$500(Lcom/autochips/inputsource/HDMI;I)I

    .line 701
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/autochips/inputsource/HDMI$1;->this$0:Lcom/autochips/inputsource/HDMI;

    iget p2, p2, Lcom/autochips/inputsource/HDMI;->mPhoneResolutionIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p1, "mBtHidListener - Unkown Action"

    .line 703
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
