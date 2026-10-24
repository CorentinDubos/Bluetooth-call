.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;
.super Ljava/lang/Object;
.source "VideoPlayerRepCanbus.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;->reportToCanBus(BLandroid/content/Context;BBIBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;

.field final synthetic val$CurrentAllMinute:B

.field final synthetic val$CurrentAllMinuteStr:Ljava/lang/String;

.field final synthetic val$CurrentHour:B

.field final synthetic val$CurrentHourStr:Ljava/lang/String;

.field final synthetic val$CurrentMinute:B

.field final synthetic val$CurrentMinuteStr:Ljava/lang/String;

.field final synthetic val$CurrentPlayingIndexLow:B

.field final synthetic val$CurrentPos:I

.field final synthetic val$CurrentSecond:B

.field final synthetic val$CurrentSecondStr:Ljava/lang/String;

.field final synthetic val$TotalCount:I

.field final synthetic val$duration:I

.field final synthetic val$finalCurrentPlayingIndexHigh:B

.field final synthetic val$finalMStoagePath:B

.field final synthetic val$finalPlayRatio:B

.field final synthetic val$isPlaying:Z

.field final synthetic val$playMode:B


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;BBBIBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBZI)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    .line 408
    iput-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus;

    move v1, p2

    iput-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$finalMStoagePath:B

    move v1, p3

    iput-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$finalPlayRatio:B

    move v1, p4

    iput-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentPlayingIndexLow:B

    move v1, p5

    iput v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$TotalCount:I

    move v1, p6

    iput-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentHour:B

    move v1, p7

    iput-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentMinute:B

    move v1, p8

    iput-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentSecond:B

    move-object v1, p9

    iput-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentAllMinuteStr:Ljava/lang/String;

    move v1, p10

    iput-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$finalCurrentPlayingIndexHigh:B

    move v1, p11

    iput-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentAllMinute:B

    move-object v1, p12

    iput-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentHourStr:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentMinuteStr:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentSecondStr:Ljava/lang/String;

    move/from16 v1, p15

    iput v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentPos:I

    move/from16 v1, p16

    iput-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$playMode:B

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$isPlaying:Z

    move/from16 v1, p18

    iput v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 411
    iget-byte v2, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$finalMStoagePath:B

    iget-byte v3, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$finalPlayRatio:B

    iget-byte v4, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentPlayingIndexLow:B

    and-int/lit16 v4, v4, 0xff

    iget v5, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$TotalCount:I

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentHour:B

    iget-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentMinute:B

    iget-byte v8, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentSecond:B

    iget-object v9, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentAllMinuteStr:Ljava/lang/String;

    iget-byte v10, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$finalCurrentPlayingIndexHigh:B

    iget-byte v11, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentAllMinute:B

    iget-object v12, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentHourStr:Ljava/lang/String;

    iget-object v13, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentMinuteStr:Ljava/lang/String;

    iget-object v14, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentSecondStr:Ljava/lang/String;

    iget v15, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$CurrentPos:I

    iget-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$playMode:B

    move/from16 v16, v1

    iget-boolean v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$isPlaying:Z

    move/from16 v17, v1

    iget v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/VideoPlayerRepCanbus$1;->val$duration:I

    move/from16 v18, v1

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v18}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->videoInfoChange(BBIIBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IBZI)V

    return-void
.end method
