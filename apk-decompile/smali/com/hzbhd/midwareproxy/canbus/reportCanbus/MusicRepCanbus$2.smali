.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;
.super Ljava/lang/Object;
.source "MusicRepCanbus.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;->reportCanbusInfo(BLandroid/content/Context;BBIBBBBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JBIZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

.field final synthetic val$CurrentAllMinute:B

.field final synthetic val$CurrentAllMinuteStr:B

.field final synthetic val$CurrentHour:B

.field final synthetic val$CurrentHourStr:Ljava/lang/String;

.field final synthetic val$CurrentMinute:B

.field final synthetic val$CurrentMinuteStr:Ljava/lang/String;

.field final synthetic val$CurrentPlayingIndexLow:B

.field final synthetic val$CurrentPos:J

.field final synthetic val$CurrentSecond:B

.field final synthetic val$CurrentSecondStr:Ljava/lang/String;

.field final synthetic val$finalCurrentPlayingIndexHigh:B

.field final synthetic val$finalMPlayIndex:I

.field final synthetic val$finalMStoagePath:B

.field final synthetic val$finalPlayRatio:B

.field final synthetic val$finalTotalCount:I

.field final synthetic val$isPlaying:Z

.field final synthetic val$isReportFromPlay:Z

.field final synthetic val$playModel:B

.field final synthetic val$songAlbum:Ljava/lang/String;

.field final synthetic val$songArtist:Ljava/lang/String;

.field final synthetic val$songTitle:Ljava/lang/String;

.field final synthetic val$totalTime:J


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;BBBIBBBBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JBIZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    .line 538
    iput-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus;

    move v1, p2

    iput-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$finalMStoagePath:B

    move v1, p3

    iput-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$finalPlayRatio:B

    move v1, p4

    iput-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentPlayingIndexLow:B

    move v1, p5

    iput v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$finalTotalCount:I

    move v1, p6

    iput-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentHour:B

    move v1, p7

    iput-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentMinute:B

    move v1, p8

    iput-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentSecond:B

    move v1, p9

    iput-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentAllMinuteStr:B

    move v1, p10

    iput-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$finalCurrentPlayingIndexHigh:B

    move v1, p11

    iput-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentAllMinute:B

    move-object v1, p12

    iput-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentHourStr:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentMinuteStr:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentSecondStr:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentPos:J

    move/from16 v1, p17

    iput-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$playModel:B

    move/from16 v1, p18

    iput v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$finalMPlayIndex:I

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$isPlaying:Z

    move-wide/from16 v1, p20

    iput-wide v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$totalTime:J

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$songTitle:Ljava/lang/String;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$songAlbum:Ljava/lang/String;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$songArtist:Ljava/lang/String;

    move/from16 v1, p25

    iput-boolean v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$isReportFromPlay:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 541
    iget-byte v2, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$finalMStoagePath:B

    iget-byte v3, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$finalPlayRatio:B

    iget-byte v4, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentPlayingIndexLow:B

    and-int/lit16 v4, v4, 0xff

    iget v5, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$finalTotalCount:I

    iget-byte v6, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentHour:B

    iget-byte v7, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentMinute:B

    iget-byte v8, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentSecond:B

    iget-byte v9, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentAllMinuteStr:B

    iget-byte v10, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$finalCurrentPlayingIndexHigh:B

    iget-byte v11, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentAllMinute:B

    iget-object v12, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentHourStr:Ljava/lang/String;

    iget-object v13, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentMinuteStr:Ljava/lang/String;

    iget-object v14, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentSecondStr:Ljava/lang/String;

    move/from16 v26, v2

    iget-wide v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$CurrentPos:J

    move-wide v15, v1

    iget-byte v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$playModel:B

    move/from16 v17, v1

    iget v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$finalMPlayIndex:I

    move/from16 v18, v1

    iget-boolean v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$isPlaying:Z

    move/from16 v19, v1

    iget-wide v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$totalTime:J

    move-wide/from16 v20, v1

    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$songTitle:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$songAlbum:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$songArtist:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-boolean v1, v0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MusicRepCanbus$2;->val$isReportFromPlay:Z

    move/from16 v25, v1

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-interface/range {v1 .. v25}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->musicInfoChange(BBIIBBBBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JBIZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
