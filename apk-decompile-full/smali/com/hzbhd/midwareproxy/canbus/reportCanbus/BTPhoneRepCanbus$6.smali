.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$6;
.super Ljava/lang/Object;
.source "BTPhoneRepCanbus.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->reportBtTalkingToCan(Landroid/content/Context;[BZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;

.field final synthetic val$isAudioTransferTowardsAG:Z

.field final synthetic val$isMicMute:Z

.field final synthetic val$phoneNumber:[B


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;[BZZ)V
    .locals 0

    .line 1148
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$6;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$6;->val$phoneNumber:[B

    iput-boolean p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$6;->val$isMicMute:Z

    iput-boolean p4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$6;->val$isAudioTransferTowardsAG:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1151
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$6;->val$phoneNumber:[B

    iget-boolean v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$6;->val$isMicMute:Z

    iget-boolean v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$6;->val$isAudioTransferTowardsAG:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->btPhoneTalkingInfoChange([BZZ)V

    return-void
.end method
