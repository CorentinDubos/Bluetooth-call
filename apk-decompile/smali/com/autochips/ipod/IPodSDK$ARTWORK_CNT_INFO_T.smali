.class public Lcom/autochips/ipod/IPodSDK$ARTWORK_CNT_INFO_T;
.super Lcom/autochips/ipod/IPodSDK$PlayingTrackInfo;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ARTWORK_CNT_INFO_T"
.end annotation


# instance fields
.field public artworkCnt:[Lcom/autochips/ipod/IPodSDK$ARTWORK_CNT_T;

.field public infoNum:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1043
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK$PlayingTrackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public set(S[Lcom/autochips/ipod/IPodSDK$ARTWORK_CNT_T;)V
    .locals 0

    .line 1058
    iput-short p1, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_CNT_INFO_T;->infoNum:S

    .line 1059
    iput-object p2, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_CNT_INFO_T;->artworkCnt:[Lcom/autochips/ipod/IPodSDK$ARTWORK_CNT_T;

    return-void
.end method
