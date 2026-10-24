.class public Lcom/autochips/ipod/IPodSDK$ARTWORK_CNT_T;
.super Lcom/autochips/ipod/IPodSDK$PlayingTrackInfo;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ARTWORK_CNT_T"
.end annotation


# instance fields
.field public artWorkCnt:S

.field public formatID:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 958
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK$PlayingTrackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public set(SS)V
    .locals 0

    .line 973
    iput-short p1, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_CNT_T;->formatID:S

    .line 974
    iput-short p2, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_CNT_T;->artWorkCnt:S

    return-void
.end method
