.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;
.super Ljava/lang/Object;
.source "NSDSCommonParameters.java"


# instance fields
.field private mAkaToken:Ljava/lang/String;

.field private mChallengeResponse:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mImsiEap:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "challengeResponse"    # Ljava/lang/String;
    .param p2, "akaToken"    # Ljava/lang/String;
    .param p3, "imsiEap"    # Ljava/lang/String;
    .param p4, "deviceId"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->mChallengeResponse:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->mAkaToken:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->mImsiEap:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->mDeviceId:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getAkaToken()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->mAkaToken:Ljava/lang/String;

    return-object v0
.end method

.method public getChallengeResponse()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->mChallengeResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getImsiEap()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->mImsiEap:Ljava/lang/String;

    return-object v0
.end method
