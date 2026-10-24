.class public final enum Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;
.super Ljava/lang/Enum;
.source "RadioConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/RadioConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RDSType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;

.field public static final enum NORDS:Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;

.field public static final enum RBDS:Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;

.field public static final enum RDS:Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 95
    new-instance v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;

    const-string v1, "NORDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;->NORDS:Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;

    .line 96
    new-instance v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;

    const-string v1, "RDS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;->RDS:Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;

    .line 97
    new-instance v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;

    const-string v1, "RBDS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;->RBDS:Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;

    .line 94
    sget-object v5, Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;->NORDS:Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;->RDS:Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;->$VALUES:[Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;
    .locals 1

    .line 94
    const-class v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;
    .locals 1

    .line 94
    sget-object v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;->$VALUES:[Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/RadioConstantsDef$RDSType;

    return-object v0
.end method
