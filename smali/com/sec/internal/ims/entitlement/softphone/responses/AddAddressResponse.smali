.class public Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse;
.super Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;
.source "AddAddressResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse$LocationResponse;
    }
.end annotation


# instance fields
.field public mLocationResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse$LocationResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locationResponse"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddAddressResponse [mLocationResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse;->mLocationResponse:Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse$LocationResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
