.class public Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
.super Ljava/lang/Object;
.source "TokenLoginClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginclient/TokenLoginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TokenQueryResult"
.end annotation


# instance fields
.field private final mException:Ljava/lang/Throwable;

.field private final mResultCode:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field private final mTokenData:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;


# direct methods
.method private constructor <init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "rc"    # Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
    .param p2, "tokenData"    # Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->mResultCode:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 743
    iput-object p2, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->mTokenData:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;

    .line 744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->mException:Ljava/lang/Throwable;

    .line 745
    return-void
.end method

.method synthetic constructor <init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
    .param p2, "x1"    # Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;
    .param p3, "x2"    # Ljava/lang/Throwable;
    .param p4, "x3"    # Lcom/verizon/loginclient/TokenLoginClient$1;

    .line 735
    invoke-direct {p0, p1, p2, p3}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;)Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
    .locals 1
    .param p0, "x0"    # Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    .line 735
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->mResultCode:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    return-object v0
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->mException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getResultCode()Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->mResultCode:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    return-object v0
.end method

.method public getTokenData()Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->mTokenData:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;

    return-object v0
.end method
