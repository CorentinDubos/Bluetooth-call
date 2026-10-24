.class Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ContractsFilter;
.super Landroid/widget/Filter;
.source "CustomAdapterContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContractsFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ContractsFilter;->this$0:Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    .line 64
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ContractsFilter;->this$0:Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->access$300(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->access$202(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 69
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iget-object v2, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ContractsFilter;->this$0:Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

    invoke-static {v2}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->access$300(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;

    .line 72
    invoke-virtual {v3}, Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_3
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ContractsFilter;->this$0:Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

    invoke-static {p1, v1}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->access$202(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;Ljava/util/List;)Ljava/util/List;

    .line 80
    :goto_1
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 81
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ContractsFilter;->this$0:Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->access$200(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ContractsFilter;->this$0:Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->access$202(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;Ljava/util/List;)Ljava/util/List;

    .line 88
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ContractsFilter;->this$0:Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->notifyDataSetChanged()V

    return-void
.end method
