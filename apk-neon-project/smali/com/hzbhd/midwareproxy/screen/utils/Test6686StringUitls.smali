.class public Lcom/hzbhd/midwareproxy/screen/utils/Test6686StringUitls;
.super Ljava/lang/Object;
.source "Test6686StringUitls.java"


# static fields
.field public static dev_Radio_Get_Full_Quality_Data:Ljava/lang/String; = ""

.field public static dev_Radio_Get_Quality_Data:Ljava/lang/String; = ""

.field public static dev_Radio_Get_Quality_Level:Ljava/lang/String; = ""

.field public static dev_Radio_Get_RDS_Data_buff:Ljava/lang/String; = ""

.field public static dev_Radio_Get_RDS_Status_buff:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearString()V
    .locals 0

    return-void
.end method

.method public static makeString()Ljava/lang/String;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dev_Radio_Get_Quality_Data: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs makeString([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "dev_Radio_Get_Quality_Data: \n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeString2()Ljava/lang/String;
    .locals 1

    const-string v0, "radiodebgradiodebgradiodebgradiodebgradiodebg"

    return-object v0
.end method
