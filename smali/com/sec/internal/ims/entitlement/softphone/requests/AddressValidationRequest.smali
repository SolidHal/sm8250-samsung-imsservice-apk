.class public Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest;
.super Ljava/lang/Object;
.source "AddressValidationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest$Address;,
        Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest$E911Context;
    }
.end annotation


# instance fields
.field public mE911Context:Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest$E911Context;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "e911Context"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest$Address;Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest$Address;
    .param p2, "confirmed"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest$E911Context;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest$E911Context;-><init>(Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest$Address;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest;->mE911Context:Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest$E911Context;

    .line 93
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddressValidationRequest [mE911Context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest;->mE911Context:Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest$E911Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
