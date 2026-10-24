.class public Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;
.super Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_A;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PB_NOTIFY_STATUS_INF_T"
.end annotation


# instance fields
.field public chapsetMsOffset:I

.field public chaptMsOffsetValid:Z

.field public chaptSecOffset:I

.field public chaptSecOffsetValid:Z

.field public chapterIndex:I

.field public chapterIndexValid:Z

.field public eStatus:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

.field public lyricInfoValid:Z

.field public lyricReady:Z

.field public pbStatuValid:B

.field public repeatState:I

.field public repeatStateValid:Z

.field public shuffleState:I

.field public shuffleStateValid:Z

.field public trackCapa:Z

.field public trackCapaBits:I

.field public trackIndex:I

.field public trackIndexValid:Z

.field public trackMsOffset:I

.field public trackMsOffsetValid:Z

.field public trackPlayMode:B

.field public trackPlayModeValid:Z

.field public trackSecOffset:I

.field public trackSecOffsetValid:Z

.field public trackUID:J

.field public trackUIDValid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1404
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_A;-><init>()V

    return-void
.end method


# virtual methods
.method public set(BIZIZIZIZIZIZIZJZBZZZIZIZI)V
    .locals 3

    move-object v0, p0

    move v1, p1

    .line 1540
    iput-byte v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->pbStatuValid:B

    .line 1541
    invoke-static {p2}, Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;->valueOf(I)Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    move-result-object v1

    iput-object v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->eStatus:Lcom/autochips/ipod/IPodSDK$PLAY_ST_EX_E;

    move v1, p3

    .line 1542
    iput-boolean v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->trackIndexValid:Z

    move v1, p4

    .line 1543
    iput v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->trackIndex:I

    move v1, p5

    .line 1544
    iput-boolean v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->trackMsOffsetValid:Z

    move v1, p6

    .line 1545
    iput v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->trackMsOffset:I

    move v1, p7

    .line 1546
    iput-boolean v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->chapterIndexValid:Z

    move v1, p8

    .line 1547
    iput v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->chapterIndex:I

    move v1, p9

    .line 1548
    iput-boolean v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->trackSecOffsetValid:Z

    move v1, p10

    .line 1549
    iput v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->trackSecOffset:I

    move v1, p11

    .line 1550
    iput-boolean v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->chaptMsOffsetValid:Z

    move v1, p12

    .line 1551
    iput v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->chapsetMsOffset:I

    move/from16 v1, p13

    .line 1552
    iput-boolean v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->chaptSecOffsetValid:Z

    move/from16 v1, p14

    .line 1553
    iput v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->chaptSecOffset:I

    move/from16 v1, p15

    .line 1554
    iput-boolean v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->trackUIDValid:Z

    move-wide/from16 v1, p16

    .line 1555
    iput-wide v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->trackUID:J

    move/from16 v1, p18

    .line 1556
    iput-boolean v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->trackPlayModeValid:Z

    move/from16 v1, p19

    .line 1557
    iput-byte v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->trackPlayMode:B

    move/from16 v1, p20

    .line 1558
    iput-boolean v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->lyricInfoValid:Z

    move/from16 v1, p21

    .line 1559
    iput-boolean v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->lyricReady:Z

    move/from16 v1, p22

    .line 1560
    iput-boolean v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->trackCapa:Z

    move/from16 v1, p23

    .line 1561
    iput v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->trackCapaBits:I

    move/from16 v1, p24

    .line 1562
    iput-boolean v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->shuffleStateValid:Z

    move/from16 v1, p25

    .line 1563
    iput v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->shuffleState:I

    move/from16 v1, p26

    .line 1564
    iput-boolean v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->repeatStateValid:Z

    move/from16 v1, p27

    .line 1565
    iput v1, v0, Lcom/autochips/ipod/IPodSDK$PB_NOTIFY_STATUS_INF_T;->repeatState:I

    return-void
.end method
