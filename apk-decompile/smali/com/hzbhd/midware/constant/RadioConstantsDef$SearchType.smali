.class public final enum Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;
.super Ljava/lang/Enum;
.source "RadioConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/RadioConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

.field public static final enum SEARCH_ALL_BAND_FROM_MIN_FREQ:Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

.field public static final enum SEARCH_CURRENT_BAND_FROM_CURRENT_FREQ:Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

.field public static final enum SEARCH_CURRENT_BAND_FROM_MIN_FREQ:Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

.field public static final enum SEARCH_DEFAULT:Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

    const-string v1, "SEARCH_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;->SEARCH_DEFAULT:Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

    .line 16
    new-instance v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

    const-string v1, "SEARCH_ALL_BAND_FROM_MIN_FREQ"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;->SEARCH_ALL_BAND_FROM_MIN_FREQ:Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

    .line 17
    new-instance v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

    const-string v1, "SEARCH_CURRENT_BAND_FROM_CURRENT_FREQ"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;->SEARCH_CURRENT_BAND_FROM_CURRENT_FREQ:Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

    .line 18
    new-instance v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

    const-string v1, "SEARCH_CURRENT_BAND_FROM_MIN_FREQ"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;->SEARCH_CURRENT_BAND_FROM_MIN_FREQ:Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

    .line 14
    sget-object v6, Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;->SEARCH_DEFAULT:Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;->SEARCH_ALL_BAND_FROM_MIN_FREQ:Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;->SEARCH_CURRENT_BAND_FROM_CURRENT_FREQ:Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;->$VALUES:[Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;
    .locals 1

    .line 14
    const-class v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;
    .locals 1

    .line 14
    sget-object v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;->$VALUES:[Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/RadioConstantsDef$SearchType;

    return-object v0
.end method
