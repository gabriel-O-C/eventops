import { RenderResult, cleanup, render } from "@testing-library/react";
import { afterEach, describe, expect, test } from "vitest";
import { Header } from "./Header";
type SutTypes = {
  sut: RenderResult;
};
const makeSut = (): SutTypes => {
  const sut = render(<Header />);

  return {
    sut,
  };
};

describe("Tests the Header component", () => {
  afterEach(cleanup);

  test("it should render the Header component properly", () => {
    const { sut } = makeSut();

    expect(sut.getByText("EventOps")).toBeTruthy();
  });
});
