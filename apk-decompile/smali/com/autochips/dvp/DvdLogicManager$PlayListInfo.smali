.class public Lcom/autochips/dvp/DvdLogicManager$PlayListInfo;
.super Ljava/lang/Object;
.source "DvdLogicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/dvp/DvdLogicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayListInfo"
.end annotation


# instance fields
.field private mCount:I

.field private mIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 2896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2888
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager$PlayListInfo;->mIndex:I

    .line 2889
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager$PlayListInfo;->mCount:I

    .line 2897
    iput p1, p0, Lcom/autochips/dvp/DvdLogicManager$PlayListInfo;->mIndex:I

    .line 2898
    iput p2, p0, Lcom/autochips/dvp/DvdLogicManager$PlayListInfo;->mCount:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 2914
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager$PlayListInfo;->mCount:I

    return v0
.end method

.method public getCurIdx()I
    .locals 1

    .line 2906
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager$PlayListInfo;->mIndex:I

    return v0
.end method
