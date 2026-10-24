.class public final enum Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;
.super Ljava/lang/Enum;
.source "MpegConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/MpegConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DISC_EXIST_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

.field public static final enum EJECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

.field public static final enum INJECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

.field public static final enum MOUNTED:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

.field public static final enum QUERYDONE:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

.field public static final enum QUERYSTART:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

.field public static final enum RESIDENT:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 419
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    const-string v1, "RESIDENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;->RESIDENT:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    const-string v1, "INJECT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;->INJECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    const-string v1, "EJECT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;->EJECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    const-string v1, "QUERYSTART"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;->QUERYSTART:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    const-string v1, "QUERYDONE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;->QUERYDONE:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    const-string v1, "MOUNTED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;->MOUNTED:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    .line 418
    sget-object v8, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;->RESIDENT:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    aput-object v8, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;->INJECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;->EJECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;->QUERYSTART:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;->QUERYDONE:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;->$VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 418
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;
    .locals 1

    .line 418
    const-class v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;
    .locals 1

    .line 418
    sget-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;->$VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_EXIST_STATE;

    return-object v0
.end method
