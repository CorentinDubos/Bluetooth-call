.class public Lcom/autochips/ipod/IPodSDK$CHAPTER_INFO_T;
.super Ljava/lang/Object;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CHAPTER_INFO_T"
.end annotation


# instance fields
.field public chapterCnt:I

.field public chapterIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(II)V
    .locals 0

    .line 698
    iput p1, p0, Lcom/autochips/ipod/IPodSDK$CHAPTER_INFO_T;->chapterCnt:I

    .line 699
    iput p2, p0, Lcom/autochips/ipod/IPodSDK$CHAPTER_INFO_T;->chapterIndex:I

    return-void
.end method
