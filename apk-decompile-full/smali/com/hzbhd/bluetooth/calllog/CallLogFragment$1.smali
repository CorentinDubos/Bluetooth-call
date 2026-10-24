.class Lcom/hzbhd/bluetooth/calllog/CallLogFragment$1;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->iniNP2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

.field final synthetic val$iv_switch_record:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;Landroid/widget/ImageView;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$1;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$1;->val$iv_switch_record:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09018d

    if-eq p1, v0, :cond_3

    const v0, 0x7f090197

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$1;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->access$300(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 235
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$1;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->startCallsQuery(I)V

    .line 236
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$1;->val$iv_switch_record:Landroid/widget/ImageView;

    const v1, 0x7f08134e

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$1;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->access$302(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;I)I

    goto :goto_0

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$1;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->access$300(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v0, :cond_2

    .line 239
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$1;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->startCallsQuery(I)V

    .line 240
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$1;->val$iv_switch_record:Landroid/widget/ImageView;

    const v0, 0x7f08131d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$1;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    invoke-static {p1, v1}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->access$302(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;I)I

    goto :goto_0

    .line 242
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$1;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->access$300(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;)I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 243
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$1;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    invoke-virtual {p1, v1}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->startCallsQuery(I)V

    .line 244
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$1;->val$iv_switch_record:Landroid/widget/ImageView;

    const v0, 0x7f081340

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$1;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->access$302(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;I)I

    goto :goto_0

    .line 228
    :cond_3
    iget-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$1;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/calllog/CallLogFragment;->access$200(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;)Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 230
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpDialCall(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    :goto_0
    return-void
.end method
