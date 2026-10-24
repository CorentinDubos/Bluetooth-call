.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;
.super Ljava/lang/Object;
.source "DiscRepCanbus.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;->reportCanbusInfo(Landroid/content/Context;BIIIIIIZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;

.field final synthetic val$album:Ljava/lang/String;

.field final synthetic val$arits:Ljava/lang/String;

.field final synthetic val$currentTime:I

.field final synthetic val$currentTotalNo:I

.field final synthetic val$finalCurrentPlayNo:I

.field final synthetic val$isPlaying:Z

.field final synthetic val$isUnMuted:Z

.field final synthetic val$mDiscType:I

.field final synthetic val$mPlayStat:I

.field final synthetic val$playModel:B

.field final synthetic val$playTitleNo:I

.field final synthetic val$position:I

.field final synthetic val$song:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;BIIIIIIZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus;

    iput-byte p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$playModel:B

    iput p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$currentTime:I

    iput p4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$playTitleNo:I

    iput p5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$position:I

    iput p6, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$finalCurrentPlayNo:I

    iput p7, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$currentTotalNo:I

    iput p8, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$mDiscType:I

    iput-boolean p9, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$isUnMuted:Z

    iput-boolean p10, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$isPlaying:Z

    iput p11, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$mPlayStat:I

    iput-object p12, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$song:Ljava/lang/String;

    iput-object p13, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$album:Ljava/lang/String;

    iput-object p14, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$arits:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 629
    iget-byte v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$playModel:B

    iget v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$currentTime:I

    iget v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$playTitleNo:I

    iget v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$position:I

    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$finalCurrentPlayNo:I

    iget v6, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$currentTotalNo:I

    iget v7, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$mDiscType:I

    iget-boolean v8, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$isUnMuted:Z

    iget-boolean v9, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$isPlaying:Z

    iget v10, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$mPlayStat:I

    iget-object v11, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$song:Ljava/lang/String;

    iget-object v12, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$album:Ljava/lang/String;

    iget-object v13, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/DiscRepCanbus$1;->val$arits:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v13}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->discInfoChange(BIIIIIIZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
