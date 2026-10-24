.class public Lcom/autochips/dvp/DvdLogicManager$TrackInfo;
.super Ljava/lang/Object;
.source "DvdLogicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/dvp/DvdLogicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackInfo"
.end annotation


# instance fields
.field private mCurTrackIdx:I

.field private mTrackCnt:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 2930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2922
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager$TrackInfo;->mCurTrackIdx:I

    .line 2923
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager$TrackInfo;->mTrackCnt:I

    .line 2931
    iput p1, p0, Lcom/autochips/dvp/DvdLogicManager$TrackInfo;->mCurTrackIdx:I

    .line 2932
    iput p2, p0, Lcom/autochips/dvp/DvdLogicManager$TrackInfo;->mTrackCnt:I

    return-void
.end method


# virtual methods
.method public getCurTrackIdx()I
    .locals 1

    .line 2941
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager$TrackInfo;->mCurTrackIdx:I

    return v0
.end method

.method public getTrackCount()I
    .locals 1

    .line 2949
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager$TrackInfo;->mTrackCnt:I

    return v0
.end method
