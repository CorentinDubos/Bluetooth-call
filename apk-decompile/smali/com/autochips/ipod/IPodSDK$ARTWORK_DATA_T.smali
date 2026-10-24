.class public Lcom/autochips/ipod/IPodSDK$ARTWORK_DATA_T;
.super Ljava/lang/Object;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ARTWORK_DATA_T"
.end annotation


# instance fields
.field public botRightX:S

.field public botRightY:S

.field public dataBufSize:I

.field public descritorIndex:S

.field public displayPixFmtCode:B

.field public imgHeight:S

.field public imgWidth:S

.field public pvData:[B

.field public rowSizeInByte:I

.field public topLeftX:S

.field public topLeftY:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(SBSSSSSSII[B)V
    .locals 0

    .line 1129
    iput-short p1, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_DATA_T;->descritorIndex:S

    .line 1130
    iput-byte p2, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_DATA_T;->displayPixFmtCode:B

    .line 1131
    iput-short p3, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_DATA_T;->imgWidth:S

    .line 1132
    iput-short p4, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_DATA_T;->imgHeight:S

    .line 1133
    iput-short p5, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_DATA_T;->topLeftX:S

    .line 1134
    iput-short p6, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_DATA_T;->topLeftY:S

    .line 1135
    iput-short p7, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_DATA_T;->botRightX:S

    .line 1136
    iput-short p8, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_DATA_T;->botRightY:S

    .line 1137
    iput p9, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_DATA_T;->rowSizeInByte:I

    .line 1138
    iput p10, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_DATA_T;->dataBufSize:I

    .line 1139
    iput-object p11, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_DATA_T;->pvData:[B

    return-void
.end method
