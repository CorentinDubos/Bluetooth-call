.class public Lcom/autochips/ipod/IPodSDK$TRACK_CAP_INF_T;
.super Lcom/autochips/ipod/IPodSDK$PlayingTrackInfo;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TRACK_CAP_INF_T"
.end annotation


# instance fields
.field public chapterCount:S

.field public containVideo:Z

.field public hasAlbumArtWork:Z

.field public hasChapter:Z

.field public hasDescription:Z

.field public hasLocalCasting:Z

.field public hasLyrics:Z

.field public hasReleaseDate:Z

.field public isAudioBook:Z

.field public queue2PlayVideo:Z

.field public timeLen:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 861
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK$PlayingTrackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public set(ZZZZZZZZZIS)V
    .locals 0

    .line 924
    iput-boolean p1, p0, Lcom/autochips/ipod/IPodSDK$TRACK_CAP_INF_T;->queue2PlayVideo:Z

    .line 925
    iput-boolean p2, p0, Lcom/autochips/ipod/IPodSDK$TRACK_CAP_INF_T;->containVideo:Z

    .line 926
    iput-boolean p3, p0, Lcom/autochips/ipod/IPodSDK$TRACK_CAP_INF_T;->hasDescription:Z

    .line 927
    iput-boolean p4, p0, Lcom/autochips/ipod/IPodSDK$TRACK_CAP_INF_T;->hasReleaseDate:Z

    .line 928
    iput-boolean p5, p0, Lcom/autochips/ipod/IPodSDK$TRACK_CAP_INF_T;->hasLocalCasting:Z

    .line 929
    iput-boolean p6, p0, Lcom/autochips/ipod/IPodSDK$TRACK_CAP_INF_T;->hasLyrics:Z

    .line 930
    iput-boolean p7, p0, Lcom/autochips/ipod/IPodSDK$TRACK_CAP_INF_T;->hasAlbumArtWork:Z

    .line 931
    iput-boolean p8, p0, Lcom/autochips/ipod/IPodSDK$TRACK_CAP_INF_T;->hasChapter:Z

    .line 932
    iput-boolean p9, p0, Lcom/autochips/ipod/IPodSDK$TRACK_CAP_INF_T;->isAudioBook:Z

    .line 933
    iput p10, p0, Lcom/autochips/ipod/IPodSDK$TRACK_CAP_INF_T;->timeLen:I

    .line 934
    iput-short p11, p0, Lcom/autochips/ipod/IPodSDK$TRACK_CAP_INF_T;->chapterCount:S

    return-void
.end method
