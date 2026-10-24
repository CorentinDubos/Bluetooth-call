.class public Lcom/hzbhd/config/lib/launcher/ComponentPosition;
.super Ljava/lang/Object;
.source "ComponentPosition.java"


# instance fields
.field private column:I

.field private component:Ljava/lang/String;

.field private page:I

.field private row:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/hzbhd/config/lib/launcher/ComponentPosition;->component:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/hzbhd/config/lib/launcher/ComponentPosition;->page:I

    .line 12
    iput p3, p0, Lcom/hzbhd/config/lib/launcher/ComponentPosition;->row:I

    .line 13
    iput p4, p0, Lcom/hzbhd/config/lib/launcher/ComponentPosition;->column:I

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/hzbhd/config/lib/launcher/ComponentPosition;->column:I

    return v0
.end method

.method public getComponent()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/hzbhd/config/lib/launcher/ComponentPosition;->component:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/hzbhd/config/lib/launcher/ComponentPosition;->page:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/hzbhd/config/lib/launcher/ComponentPosition;->row:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComponentPosition{component=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hzbhd/config/lib/launcher/ComponentPosition;->component:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/config/lib/launcher/ComponentPosition;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/config/lib/launcher/ComponentPosition;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", column="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hzbhd/config/lib/launcher/ComponentPosition;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
