.class public Lcom/sec/internal/constants/ims/servicemodules/Registration;
.super Ljava/lang/Object;
.source "Registration.java"


# instance fields
.field private mImsRegistration:Lcom/sec/ims/ImsRegistration;

.field private mIsReRegi:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/sec/ims/ImsRegistration;Z)V
    .locals 1
    .param p1, "registration"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "isReRegi"    # Z

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/Registration;->mImsRegistration:Lcom/sec/ims/ImsRegistration;

    .line 11
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/Registration;->mIsReRegi:Ljava/lang/Boolean;

    .line 12
    return-void
.end method


# virtual methods
.method public getImsRegi()Lcom/sec/ims/ImsRegistration;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/Registration;->mImsRegistration:Lcom/sec/ims/ImsRegistration;

    return-object v0
.end method

.method public isReRegi()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/Registration;->mIsReRegi:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
