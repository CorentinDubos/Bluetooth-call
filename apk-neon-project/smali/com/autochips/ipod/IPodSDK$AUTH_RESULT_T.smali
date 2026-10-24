.class public Lcom/autochips/ipod/IPodSDK$AUTH_RESULT_T;
.super Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_A;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AUTH_RESULT_T"
.end annotation


# instance fields
.field public authResult:I

.field public canReTry:Z

.field public categoryMode:B

.field public idpMode:Z

.field public inAuthoring:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1365
    invoke-direct {p0}, Lcom/autochips/ipod/IPodSDK$NOTIFY_INFO_A;-><init>()V

    return-void
.end method


# virtual methods
.method public set(IZBZZ)V
    .locals 0

    .line 1391
    iput p1, p0, Lcom/autochips/ipod/IPodSDK$AUTH_RESULT_T;->authResult:I

    .line 1392
    iput-boolean p2, p0, Lcom/autochips/ipod/IPodSDK$AUTH_RESULT_T;->idpMode:Z

    .line 1393
    iput-byte p3, p0, Lcom/autochips/ipod/IPodSDK$AUTH_RESULT_T;->categoryMode:B

    .line 1394
    iput-boolean p4, p0, Lcom/autochips/ipod/IPodSDK$AUTH_RESULT_T;->inAuthoring:Z

    .line 1395
    iput-boolean p5, p0, Lcom/autochips/ipod/IPodSDK$AUTH_RESULT_T;->canReTry:Z

    return-void
.end method
