.class public final enum Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;
.super Ljava/lang/Enum;
.source "IPodSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/ipod/IPodSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SWI_SINK_TYPE_T"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

.field public static final enum SWI_SINK_TYPE_FRONT:Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

.field public static final enum SWI_SINK_TYPE_FRONT_REAR:Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

.field public static final enum SWI_SINK_TYPE_NONE:Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

.field public static final enum SWI_SINK_TYPE_REAR:Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 247
    new-instance v0, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    const-string v1, "SWI_SINK_TYPE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;->SWI_SINK_TYPE_NONE:Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    .line 252
    new-instance v0, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    const-string v1, "SWI_SINK_TYPE_FRONT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;->SWI_SINK_TYPE_FRONT:Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    .line 257
    new-instance v0, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    const-string v1, "SWI_SINK_TYPE_REAR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;->SWI_SINK_TYPE_REAR:Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    .line 262
    new-instance v0, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    const-string v1, "SWI_SINK_TYPE_FRONT_REAR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;->SWI_SINK_TYPE_FRONT_REAR:Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    .line 243
    sget-object v6, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;->SWI_SINK_TYPE_NONE:Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    aput-object v6, v1, v2

    sget-object v2, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;->SWI_SINK_TYPE_FRONT:Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    aput-object v2, v1, v3

    sget-object v2, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;->SWI_SINK_TYPE_REAR:Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;->$VALUES:[Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 264
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 265
    iput p3, p0, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 280
    sget-object p0, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;->SWI_SINK_TYPE_NONE:Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    return-object p0

    .line 278
    :cond_0
    sget-object p0, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;->SWI_SINK_TYPE_FRONT_REAR:Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    return-object p0

    .line 276
    :cond_1
    sget-object p0, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;->SWI_SINK_TYPE_REAR:Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    return-object p0

    .line 274
    :cond_2
    sget-object p0, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;->SWI_SINK_TYPE_FRONT:Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;
    .locals 1

    .line 243
    const-class v0, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    return-object p0
.end method

.method public static values()[Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;
    .locals 1

    .line 243
    sget-object v0, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;->$VALUES:[Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    invoke-virtual {v0}, [Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    return-object v0
.end method


# virtual methods
.method public next()Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;
    .locals 1

    .line 288
    iget v0, p0, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;->value:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;->valueOf(I)Lcom/autochips/ipod/IPodSDK$SWI_SINK_TYPE_T;

    move-result-object v0

    return-object v0
.end method
