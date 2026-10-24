.class public Lcom/autochips/ipod/IPodSDK$ARTWORK_FMTS;
.super Lcom/autochips/ipod/IPodSDK$PlayingTrackInfo;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ARTWORK_FMTS"
.end annotation


# instance fields
.field public formatID:S

.field public imgHeight:S

.field public imgWidth:S

.field public pixFormat:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 981
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK$PlayingTrackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public set(SBSS)V
    .locals 0

    .line 1032
    iput-short p1, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_FMTS;->formatID:S

    .line 1033
    iput-byte p2, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_FMTS;->pixFormat:B

    .line 1034
    iput-short p3, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_FMTS;->imgWidth:S

    .line 1035
    iput-short p4, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_FMTS;->imgHeight:S

    return-void
.end method
