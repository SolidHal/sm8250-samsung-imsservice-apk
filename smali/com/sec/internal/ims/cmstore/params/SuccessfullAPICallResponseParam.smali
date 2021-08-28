.class public Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;
.super Ljava/lang/Object;
.source "SuccessfullAPICallResponseParam.java"


# instance fields
.field private mApiName:Ljava/lang/String;

.field public mCallFlow:Ljava/lang/String;

.field public mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 1
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "callFlow"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;->mApiName:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;->mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 12
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;->mApiName:Ljava/lang/String;

    .line 15
    :cond_0
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;->mApiName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SuccessfullAPICallResponseParam [mApiName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;->mApiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallFlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/SuccessfullAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
