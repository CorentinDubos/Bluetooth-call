.class Lcom/hzbhd/midware/constant/CustomerIDConstantDef$AccessoryInformation;
.super Ljava/lang/Object;
.source "CustomerIDConstantDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/CustomerIDConstantDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessoryInformation"
.end annotation


# static fields
.field public static final ACC_MANUFACTURER:Ljava/lang/String; = "HZBHD"

.field public static final ACC_MANUFACTURER_LOGIGO:Ljava/lang/String; = "LOGIGO"

.field public static final ACC_MODEL_NUM:Ljava/lang/String; = "Car"

.field public static final ACC_NAME:Ljava/lang/String; = "Car Audio"

.field public static final ACC_SERIAL:Ljava/lang/String; = "7862115000664"

.field public static final ACC_SUPPORT_LAN:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "en"

    .line 879
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midware/constant/CustomerIDConstantDef$AccessoryInformation;->ACC_SUPPORT_LAN:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
