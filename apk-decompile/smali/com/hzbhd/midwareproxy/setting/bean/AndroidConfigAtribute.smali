.class public Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;
.super Ljava/lang/Object;
.source "AndroidConfigAtribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;
    }
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field type:Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x352a9fef    # -6991880.5f

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x197ef

    if-eq v0, v1, :cond_1

    const v1, 0x3db6c28

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "boolean"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    move p3, v3

    goto :goto_1

    :cond_1
    const-string v0, "int"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "string"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    move p3, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p3, -0x1

    :goto_1
    if-eqz p3, :cond_6

    if-eq p3, v3, :cond_5

    if-eq p3, v2, :cond_4

    goto :goto_2

    .line 22
    :cond_4
    sget-object p3, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;->STRING:Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->type:Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    goto :goto_2

    .line 18
    :cond_5
    sget-object p3, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;->BOOLEAN:Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->type:Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    goto :goto_2

    .line 14
    :cond_6
    sget-object p3, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;->INTEGER:Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->type:Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    .line 27
    :goto_2
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->name:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBooleanValue()Ljava/lang/Boolean;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->type:Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->type:Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidConfigAtribute{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", value=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->type:Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
