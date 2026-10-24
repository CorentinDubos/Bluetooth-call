.class public Lcom/autochips/ipod/IPodSDK$TRACK_GENRE_INFO_T;
.super Lcom/autochips/ipod/IPodSDK$PlayingTrackInfo;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TRACK_GENRE_INFO_T"
.end annotation


# instance fields
.field public title:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 941
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK$PlayingTrackInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public set([B)V
    .locals 0

    .line 951
    iput-object p1, p0, Lcom/autochips/ipod/IPodSDK$TRACK_GENRE_INFO_T;->title:[B

    return-void
.end method
