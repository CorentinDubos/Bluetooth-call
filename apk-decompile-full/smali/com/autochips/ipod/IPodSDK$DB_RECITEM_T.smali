.class public Lcom/autochips/ipod/IPodSDK$DB_RECITEM_T;
.super Ljava/lang/Object;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DB_RECITEM_T"
.end annotation


# instance fields
.field public recIdx:I

.field public szRecInfo:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(I[B)V
    .locals 0

    .line 785
    iput p1, p0, Lcom/autochips/ipod/IPodSDK$DB_RECITEM_T;->recIdx:I

    .line 786
    iput-object p2, p0, Lcom/autochips/ipod/IPodSDK$DB_RECITEM_T;->szRecInfo:[B

    return-void
.end method
