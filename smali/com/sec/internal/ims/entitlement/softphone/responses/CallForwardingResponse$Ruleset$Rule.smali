.class public Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
.super Ljava/lang/Object;
.source "CallForwardingResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;,
        Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action;
    }
.end annotation


# instance fields
.field public mActions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cp:actions"
    .end annotation
.end field

.field public mConditions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cp:conditions"
    .end annotation
.end field

.field public mId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "@id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rule [mId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mActions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mActions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mConditions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
