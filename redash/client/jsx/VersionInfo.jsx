//client\app\components\ApplicationArea\ApplicationLayout\VersionInfo.jsx
import React from "react";
import { clientConfig } from "@/services/auth";
import frontendVersion from "@/version.json";

export default function VersionInfo() {
  return (
    <React.Fragment>
      <div>
        Version:
        {frontendVersion !== clientConfig.version && ` ${frontendVersion.substring(0, 25)}`}
      </div>
    </React.Fragment>
  );
}
