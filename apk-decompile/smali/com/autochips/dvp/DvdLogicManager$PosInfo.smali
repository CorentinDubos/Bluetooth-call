.class public Lcom/autochips/dvp/DvdLogicManager$PosInfo;
.super Ljava/lang/Object;
.source "DvdLogicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/dvp/DvdLogicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PosInfo"
.end annotation


# instance fields
.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 2862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2854
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager$PosInfo;->mX:I

    .line 2855
    iput v0, p0, Lcom/autochips/dvp/DvdLogicManager$PosInfo;->mY:I

    .line 2863
    iput p1, p0, Lcom/autochips/dvp/DvdLogicManager$PosInfo;->mX:I

    .line 2864
    iput p2, p0, Lcom/autochips/dvp/DvdLogicManager$PosInfo;->mY:I

    return-void
.end method


# virtual methods
.method public getX()I
    .locals 1

    .line 2872
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager$PosInfo;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 2880
    iget v0, p0, Lcom/autochips/dvp/DvdLogicManager$PosInfo;->mY:I

    return v0
.end method
