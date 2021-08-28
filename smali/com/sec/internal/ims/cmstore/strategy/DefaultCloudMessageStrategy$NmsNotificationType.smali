.class public Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;
.super Ljava/lang/Object;
.source "DefaultCloudMessageStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NmsNotificationType"
.end annotation


# instance fields
.field private contractType:I

.field private dataType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "contract"    # I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;->setDataType(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;->setContractType(I)V

    .line 92
    return-void
.end method


# virtual methods
.method public getContractType()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;->contractType:I

    return v0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;->dataType:Ljava/lang/String;

    return-object v0
.end method

.method public setContractType(I)V
    .locals 0
    .param p1, "contractType"    # I

    .line 107
    iput p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;->contractType:I

    .line 108
    return-void
.end method

.method public setDataType(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataType"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;->dataType:Ljava/lang/String;

    .line 100
    return-void
.end method
