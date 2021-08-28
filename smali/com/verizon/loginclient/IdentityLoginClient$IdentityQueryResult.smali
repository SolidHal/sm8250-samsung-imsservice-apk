.class public Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;
.super Ljava/lang/Object;
.source "IdentityLoginClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginclient/IdentityLoginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdentityQueryResult"
.end annotation


# instance fields
.field private final mException:Ljava/lang/Throwable;

.field private final mIdentityData:Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;

.field private final mResultCode:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;


# direct methods
.method private constructor <init>(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "rc"    # Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;
    .param p2, "idenData"    # Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    iput-object p1, p0, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;->mResultCode:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    .line 763
    iput-object p2, p0, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;->mIdentityData:Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;

    .line 764
    iput-object p3, p0, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;->mException:Ljava/lang/Throwable;

    .line 765
    return-void
.end method

.method synthetic constructor <init>(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;Ljava/lang/Throwable;Lcom/verizon/loginclient/IdentityLoginClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;
    .param p2, "x1"    # Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;
    .param p3, "x2"    # Ljava/lang/Throwable;
    .param p4, "x3"    # Lcom/verizon/loginclient/IdentityLoginClient$1;

    .line 755
    invoke-direct {p0, p1, p2, p3}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;-><init>(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;)Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;
    .locals 1
    .param p0, "x0"    # Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    .line 755
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;->mResultCode:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    return-object v0
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;->mException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getIdentityData()Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;->mIdentityData:Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;

    return-object v0
.end method

.method public getResultCode()Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;->mResultCode:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    return-object v0
.end method
