.class public Lcom/sec/internal/ims/entitlement/softphone/responses/PolicyExceptionResponse;
.super Ljava/lang/Object;
.source "PolicyExceptionResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/softphone/responses/PolicyExceptionResponse$RequestError;
    }
.end annotation


# instance fields
.field public mRequestError:Lcom/sec/internal/ims/entitlement/softphone/responses/PolicyExceptionResponse$RequestError;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RequestError"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PolicyExceptionResponse [mRequestError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/responses/PolicyExceptionResponse;->mRequestError:Lcom/sec/internal/ims/entitlement/softphone/responses/PolicyExceptionResponse$RequestError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
