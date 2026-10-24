.class public Lcom/autochips/ipod/IPodSDK$IPodException;
.super Ljava/lang/Exception;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPodException"
.end annotation


# static fields
.field private static final ERRCODE_END_TAG:Ljava/lang/String; = "@"

.field private static final ERRCODE_TAG:Ljava/lang/String; = "@ERRCODE="

.field private static final ERRCODE_TAG_LEN:I = 0x9

.field public static final INIT_ER:I = 0x102

.field public static final INTR_ER:I = 0x100

.field public static final LOAD_ER:I = 0x101


# instance fields
.field private errcode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1645
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/16 v0, 0x100

    .line 1640
    iput v0, p0, Lcom/autochips/ipod/IPodSDK$IPodException;->errcode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1648
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x100

    .line 1640
    iput v0, p0, Lcom/autochips/ipod/IPodSDK$IPodException;->errcode:I

    .line 1649
    invoke-static {p1}, Lcom/autochips/ipod/IPodSDK$IPodException;->parseErrCode(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/autochips/ipod/IPodSDK$IPodException;->errcode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1652
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p2, 0x100

    .line 1640
    iput p2, p0, Lcom/autochips/ipod/IPodSDK$IPodException;->errcode:I

    .line 1653
    invoke-static {p1}, Lcom/autochips/ipod/IPodSDK$IPodException;->parseErrCode(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/autochips/ipod/IPodSDK$IPodException;->errcode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 1656
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/16 v0, 0x100

    .line 1640
    iput v0, p0, Lcom/autochips/ipod/IPodSDK$IPodException;->errcode:I

    .line 1657
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/autochips/ipod/IPodSDK$IPodException;->parseErrCode(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/autochips/ipod/IPodSDK$IPodException;->errcode:I

    return-void
.end method

.method private static parseErrCode(Ljava/lang/String;)I
    .locals 4

    const/16 v0, 0x100

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "@ERRCODE="

    .line 1676
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return v0

    .line 1679
    :cond_1
    sget v3, Lcom/autochips/ipod/IPodSDK$IPodException;->ERRCODE_TAG_LEN:I

    add-int/2addr v1, v3

    const-string v3, "@"

    .line 1680
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_3

    if-ne v3, v1, :cond_2

    goto :goto_0

    .line 1683
    :cond_2
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1684
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public getErrCode()I
    .locals 1

    .line 1667
    iget v0, p0, Lcom/autochips/ipod/IPodSDK$IPodException;->errcode:I

    return v0
.end method
