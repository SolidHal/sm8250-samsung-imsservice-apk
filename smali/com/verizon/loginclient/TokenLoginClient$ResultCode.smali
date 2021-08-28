.class public final enum Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
.super Ljava/lang/Enum;
.source "TokenLoginClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/loginclient/TokenLoginClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verizon/loginclient/TokenLoginClient$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum deviceNotCapable:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum engineNotInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum rogueEngineInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum securityException:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum success:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum timeout:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

.field public static final enum waitingOnObserver:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 725
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string/jumbo v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->success:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 726
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string v1, "failure"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 727
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string/jumbo v1, "waitingOnObserver"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->waitingOnObserver:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 728
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string/jumbo v1, "timeout"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->timeout:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 729
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string v1, "deviceNotCapable"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->deviceNotCapable:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 730
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string v1, "engineNotInstalled"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->engineNotInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 731
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string/jumbo v1, "rogueEngineInstalled"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->rogueEngineInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 732
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const-string/jumbo v1, "securityException"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->securityException:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    .line 724
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    sget-object v10, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->success:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    aput-object v10, v1, v2

    sget-object v2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->waitingOnObserver:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->timeout:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->deviceNotCapable:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->engineNotInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    aput-object v2, v1, v7

    sget-object v2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->rogueEngineInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->$VALUES:[Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 724
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 724
    const-class v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    return-object v0
.end method

.method public static values()[Lcom/verizon/loginclient/TokenLoginClient$ResultCode;
    .locals 1

    .line 724
    sget-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->$VALUES:[Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-virtual {v0}, [Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    return-object v0
.end method
