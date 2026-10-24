.class public Lcom/autochips/ipod/IPodSDK$TRACK_RELEASE_DATE_T;
.super Lcom/autochips/ipod/IPodSDK$PlayingTrackInfo;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TRACK_RELEASE_DATE_T"
.end annotation


# instance fields
.field public day:B

.field public hour:B

.field public minute:B

.field public month:B

.field public second:B

.field public weekDay:B

.field public year:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 807
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK$PlayingTrackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public set(BBBBBBS)V
    .locals 0

    .line 848
    iput-byte p1, p0, Lcom/autochips/ipod/IPodSDK$TRACK_RELEASE_DATE_T;->second:B

    .line 849
    iput-byte p2, p0, Lcom/autochips/ipod/IPodSDK$TRACK_RELEASE_DATE_T;->minute:B

    .line 850
    iput-byte p3, p0, Lcom/autochips/ipod/IPodSDK$TRACK_RELEASE_DATE_T;->hour:B

    .line 851
    iput-byte p4, p0, Lcom/autochips/ipod/IPodSDK$TRACK_RELEASE_DATE_T;->day:B

    .line 852
    iput-byte p5, p0, Lcom/autochips/ipod/IPodSDK$TRACK_RELEASE_DATE_T;->month:B

    .line 853
    iput-byte p6, p0, Lcom/autochips/ipod/IPodSDK$TRACK_RELEASE_DATE_T;->weekDay:B

    .line 854
    iput-short p7, p0, Lcom/autochips/ipod/IPodSDK$TRACK_RELEASE_DATE_T;->year:S

    return-void
.end method
