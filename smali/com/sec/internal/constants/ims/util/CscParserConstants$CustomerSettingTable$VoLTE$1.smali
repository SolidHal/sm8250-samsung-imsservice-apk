.class Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$1;
.super Ljava/util/HashMap;
.source "CscParserConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 39
    const-string v0, "CSVoiceOnly"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "CSVoicePreferred"

    const-string v1, "2"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "IMSPSVoicePreferred"

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v0, "IMSPSVoiceOnly"

    const-string v1, "4"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method
