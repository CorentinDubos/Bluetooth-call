.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;
.super Ljava/lang/Object;
.source "BTPhoneRepCanbus.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->reportBtStatusToCan(ILandroid/content/Context;[BZZZZIILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;

.field final synthetic val$batteryStatus:I

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$callStatus:I

.field final synthetic val$isAudioTransferTowardsAG:Z

.field final synthetic val$isCallingFlag:Z

.field final synthetic val$isHfpConnected:Z

.field final synthetic val$isMicMute:Z

.field final synthetic val$phoneNumber:[B

.field final synthetic val$signalValue:I


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;I[BZZZZIILandroid/os/Bundle;)V
    .locals 0

    .line 1827
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;->val$callStatus:I

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;->val$phoneNumber:[B

    iput-boolean p4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;->val$isHfpConnected:Z

    iput-boolean p5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;->val$isCallingFlag:Z

    iput-boolean p6, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;->val$isMicMute:Z

    iput-boolean p7, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;->val$isAudioTransferTowardsAG:Z

    iput p8, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;->val$batteryStatus:I

    iput p9, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;->val$signalValue:I

    iput-object p10, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1830
    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;->val$callStatus:I

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;->val$phoneNumber:[B

    iget-boolean v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;->val$isHfpConnected:Z

    iget-boolean v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;->val$isCallingFlag:Z

    iget-boolean v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;->val$isMicMute:Z

    iget-boolean v6, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;->val$isAudioTransferTowardsAG:Z

    iget v7, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;->val$batteryStatus:I

    iget v8, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;->val$signalValue:I

    iget-object v9, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$9;->val$bundle:Landroid/os/Bundle;

    move-object v0, p1

    invoke-interface/range {v0 .. v9}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->btPhoneStatusInfoChange(I[BZZZZIILandroid/os/Bundle;)V

    return-void
.end method
