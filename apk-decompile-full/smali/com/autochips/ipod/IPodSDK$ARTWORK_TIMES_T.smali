.class public Lcom/autochips/ipod/IPodSDK$ARTWORK_TIMES_T;
.super Ljava/lang/Object;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ARTWORK_TIMES_T"
.end annotation


# instance fields
.field public infoNum:I

.field public timePos:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(I[I)V
    .locals 0

    .line 1345
    iput p1, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_TIMES_T;->infoNum:I

    .line 1346
    iput-object p2, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_TIMES_T;->timePos:[I

    return-void
.end method
