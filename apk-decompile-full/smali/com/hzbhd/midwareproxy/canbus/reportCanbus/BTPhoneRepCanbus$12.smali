.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$12;
.super Ljava/lang/Object;
.source "BTPhoneRepCanbus.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;->reportBtCallLogToCan(Landroid/content/Context;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;

.field final synthetic val$index:I

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;IILjava/lang/String;)V
    .locals 0

    .line 2431
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$12;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus;

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$12;->val$index:I

    iput p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$12;->val$type:I

    iput-object p4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$12;->val$number:Ljava/lang/String;

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

    .line 2434
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$12;->val$index:I

    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$12;->val$type:I

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/BTPhoneRepCanbus$12;->val$number:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->btPhoneCallLogInfoChange(IILjava/lang/String;)V

    return-void
.end method
