.class public final enum Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;
.super Ljava/lang/Enum;
.source "IdentityLoginClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginclient/IdentityLoginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

.field public static final enum deviceNotCapable:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

.field public static final enum engineNotInstalled:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

.field public static final enum failure:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

.field public static final enum rogueEngineInstalled:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

.field public static final enum securityException:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

.field public static final enum success:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

.field public static final enum timeout:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

.field public static final enum waitingOnObserver:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 745
    new-instance v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    const-string/jumbo v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->success:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    .line 746
    new-instance v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    const-string v1, "failure"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    .line 747
    new-instance v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    const-string/jumbo v1, "waitingOnObserver"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->waitingOnObserver:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    .line 748
    new-instance v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    const-string/jumbo v1, "timeout"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->timeout:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    .line 749
    new-instance v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    const-string v1, "deviceNotCapable"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->deviceNotCapable:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    .line 750
    new-instance v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    const-string v1, "engineNotInstalled"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->engineNotInstalled:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    .line 751
    new-instance v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    const-string/jumbo v1, "rogueEngineInstalled"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->rogueEngineInstalled:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    .line 752
    new-instance v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    const-string/jumbo v1, "securityException"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->securityException:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    .line 744
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    sget-object v10, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->success:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    aput-object v10, v1, v2

    sget-object v2, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->waitingOnObserver:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->timeout:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->deviceNotCapable:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->engineNotInstalled:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    aput-object v2, v1, v7

    sget-object v2, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->rogueEngineInstalled:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->$VALUES:[Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 744
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 744
    const-class v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    return-object v0
.end method

.method public static values()[Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;
    .locals 1

    .line 744
    sget-object v0, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->$VALUES:[Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    invoke-virtual {v0}, [Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    return-object v0
.end method
