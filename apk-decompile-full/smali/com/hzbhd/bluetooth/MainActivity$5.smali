.class Lcom/hzbhd/bluetooth/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/hzbhd/bluetooth/widget/Keyboard$OnPinKeyboardClickListener;


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

    .line 780
    iput-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlerBackSpace()V
    .locals 4

    .line 829
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/MainActivity;->access$200(Lcom/hzbhd/bluetooth/MainActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/MainActivity;->access$200(Lcom/hzbhd/bluetooth/MainActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/MainActivity;->access$200(Lcom/hzbhd/bluetooth/MainActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {v3}, Lcom/hzbhd/bluetooth/MainActivity;->access$200(Lcom/hzbhd/bluetooth/MainActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/bluetooth/MainActivity;->access$202(Lcom/hzbhd/bluetooth/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 831
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/MainActivity;->access$200(Lcom/hzbhd/bluetooth/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/bluetooth/MainActivity;->access$302(Lcom/hzbhd/bluetooth/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 832
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/MainActivity;->access$300(Lcom/hzbhd/bluetooth/MainActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/MainActivity;->access$300(Lcom/hzbhd/bluetooth/MainActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 833
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/MainActivity;->access$300(Lcom/hzbhd/bluetooth/MainActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {v2}, Lcom/hzbhd/bluetooth/MainActivity;->access$300(Lcom/hzbhd/bluetooth/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x13

    iget-object v3, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {v3}, Lcom/hzbhd/bluetooth/MainActivity;->access$300(Lcom/hzbhd/bluetooth/MainActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hzbhd/bluetooth/MainActivity;->access$302(Lcom/hzbhd/bluetooth/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/MainActivity;->access$400(Lcom/hzbhd/bluetooth/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/MainActivity;->access$300(Lcom/hzbhd/bluetooth/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onDel()V
    .locals 0

    .line 841
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/MainActivity$5;->handlerBackSpace()V

    return-void
.end method

.method public onNumberClick(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 818
    :pswitch_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    const-string v0, "9"

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/MainActivity;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    .line 814
    :pswitch_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    const-string v0, "8"

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/MainActivity;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    .line 810
    :pswitch_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    const-string v0, "7"

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/MainActivity;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :pswitch_3
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    const-string v0, "6"

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/MainActivity;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    .line 802
    :pswitch_4
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    const-string v0, "5"

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/MainActivity;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    .line 798
    :pswitch_5
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    const-string v0, "4"

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/MainActivity;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    .line 794
    :pswitch_6
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    const-string v0, "3"

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/MainActivity;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :pswitch_7
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    const-string v0, "2"

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/MainActivity;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    .line 786
    :pswitch_8
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/MainActivity;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    .line 822
    :pswitch_9
    iget-object p1, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/MainActivity;->keyEventHandler(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOk()V
    .locals 2

    .line 856
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/MainActivity;->access$400(Lcom/hzbhd/bluetooth/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/MainActivity;->access$400(Lcom/hzbhd/bluetooth/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    return-void

    .line 862
    :cond_1
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/MainActivity;->access$400(Lcom/hzbhd/bluetooth/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->setPinCode(Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/MainActivity;->dismissPinCodeWindow()V

    .line 865
    sget-object v0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    if-eqz v0, :cond_2

    .line 866
    sget-object v0, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->mSettingsFragment:Lcom/hzbhd/bluetooth/settings/SettingsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->updateSettingItems(Z)V

    :cond_2
    return-void
.end method

.method public onStarClick()V
    .locals 2

    .line 851
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/MainActivity;->keyEventHandler(Ljava/lang/String;)V

    return-void
.end method

.method public onWellClick()V
    .locals 2

    .line 846
    iget-object v0, p0, Lcom/hzbhd/bluetooth/MainActivity$5;->this$0:Lcom/hzbhd/bluetooth/MainActivity;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/MainActivity;->keyEventHandler(Ljava/lang/String;)V

    return-void
.end method
