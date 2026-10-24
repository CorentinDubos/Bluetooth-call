.class public Lcom/autochips/ipod/IPodSDK$ARTWORK_FMTS_INFO_T;
.super Ljava/lang/Object;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ARTWORK_FMTS_INFO_T"
.end annotation


# instance fields
.field public fmtNum:I

.field public prArtworkFmt:[Lcom/autochips/ipod/IPodSDK$ARTWORK_FMTS;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(I[Lcom/autochips/ipod/IPodSDK$ARTWORK_FMTS;)V
    .locals 0

    .line 1162
    iput p1, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_FMTS_INFO_T;->fmtNum:I

    .line 1163
    iput-object p2, p0, Lcom/autochips/ipod/IPodSDK$ARTWORK_FMTS_INFO_T;->prArtworkFmt:[Lcom/autochips/ipod/IPodSDK$ARTWORK_FMTS;

    return-void
.end method
